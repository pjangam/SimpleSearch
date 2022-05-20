using Xunit;
using FluentAssertions;
using System.Threading.Tasks;

namespace SimpleSearch.Tests;

public class UnitTest
{
    [Fact]
    public void DummyTest()
    {
        "1".Should().Be("1");
        "1".Should().NotBe("2");

    }

    [Fact]
    public async Task TestGreeter()
    {
        var g = new Greeter();
        var greeting = await g.Greet();
        greeting.Should().Be("Hello, World!");
    }
}