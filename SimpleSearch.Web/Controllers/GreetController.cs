using Microsoft.AspNetCore.Mvc;

namespace SimpleSearch.Web.Controllers;

[ApiController]
[Route("/api/[controller]")]
public class GreetController : ControllerBase
{
    private readonly ILogger<GreetController> _logger;

    public GreetController(ILogger<GreetController> logger)
    {
        _logger = logger;
    }

    [HttpGet(Name = "greet")]
    public async Task<String> Get()
    {
        return await new Greeter().Greet();
    }
}
