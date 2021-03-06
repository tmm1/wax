describe["Auto Retain"] = function()
  before = function()
  end
  
  it["correctly retains an init'd object"] = function()
    local obj = NS.Date:init()
    expect( obj:retainCount() ).should_be(1)
  end
  
  it["correctly allows double retaining"] = function()
    local obj = NS.Date:init():retain()
    expect( obj:retainCount() ).should_be(2)
  end

  it["correctly retains an alloc'd copy"] = function()
    local obj = NS.Object:alloc():init()
    expect( obj:retainCount() ).should_be(1)
  end
  
  it["correctly retains an object copy"] = function()
    local obj = NS.Date:init()
    local objCopy = obj:copy()
    expect( objCopy:retainCount() ).should_be(1)
  end
  
end


describe["Garbage collector"] = function()
  before = function()
  end
  
  it["releases unused objects"] = function()
    -- Can't think of a good way to test this!
    -- should probably use weak tables
  end
end