using Xunit;
using FluentAssertions;

namespace SimpleSearch.Tests;

public class UnitTest
{
    [Fact]
    public void DummyTest()
    {
        "1".Should().Be("1");
        "1".Should().NotBe("2");
        
    }
}