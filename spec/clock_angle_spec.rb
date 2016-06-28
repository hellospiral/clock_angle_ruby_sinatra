require ("rspec")
require ("clock_angle")

describe ("String#clock_angle") do
  it ("will show the angle for one hour in reference to 12") do
    expect("01:00".clock_angle()).to(eq(30))
  end
  it ("will show the angle for between hours and minutes") do
    expect("01:01".clock_angle()).to(eq(24))
  end
  it ("will show the angle for twelve o'clock as zero") do
    expect("12:00".clock_angle()).to(eq(0))
  end
end
