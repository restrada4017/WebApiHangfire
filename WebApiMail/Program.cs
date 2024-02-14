using Hangfire;
using WebApiMail.Mail;

var builder = WebApplication.CreateBuilder(args);
ConfigurationManager configuration = builder.Configuration;
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddTransient<IMail, SmtpMail>();

string conn = configuration.GetConnectionString("DBTareas");
builder.Services.AddHangfire(x => x.UseSqlServerStorage(conn));
builder.Services.AddHangfireServer();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHangfireDashboard();

//RecurringJob.AddOrUpdate<SendMailRecurring>("Send Mail", x => x.Run(), Cron.MinuteInterval(1));

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
