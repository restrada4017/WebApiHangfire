using Dapper;
using Hangfire;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Threading.Tasks;
using WebApiMail.Mail;
using WebApiMail.Model;

namespace WebApiMail.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TaskExecuteController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public TaskExecuteController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet, Route("GetAllTaskExecute")]
        public async Task<IActionResult> GetAllTaskExecute()
        {
            try
            {
                using (var connection = new SqlConnection(_configuration.GetConnectionString("DBTareasAdmin")))
                {
                    await connection.OpenAsync();
                    var list = await connection.QueryAsync<TaskExecute>("SELECT Id, NameTask, TimeExecute,KeyTask FROM TaskExecute");
                    return Ok(list);
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        [HttpPost, Route("CreateTaskExecute")]
        public async Task<IActionResult> CreateTaskExecute(TaskExecuteRequest taskExecuteRequest)
        {
            try
            {

                using (var connection = new SqlConnection(_configuration.GetConnectionString("DBTareasAdmin")))
                {
                    await connection.OpenAsync();

                    TaskExecute taskExecute = new TaskExecute()
                    {
                        NameTask = taskExecuteRequest.NameTask,
                        TimeExecute = Convert.ToDateTime(taskExecuteRequest.TimeExecute),
                        KeyTask = Guid.NewGuid().ToString(),
                    };

                    var query = "INSERT INTO TaskExecute (NameTask, TimeExecute,KeyTask) VALUES (@NameTask, @TimeExecute,@KeyTask)";
                    await connection.ExecuteAsync(query, taskExecute);

                    BackgroundJob.Schedule(() => SendMailRecurring.Run(), taskExecute.TimeExecute);


                    return Ok("task created successfully");
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
