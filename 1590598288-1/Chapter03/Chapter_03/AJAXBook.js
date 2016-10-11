
Type.registerNamespace("AJAXBook");

AJAXBook.Car = function(strMake, strModel, strYear)
{
    this._Make = strMake;
    this._Model = strModel;
    this._Year = strYear;
};

AJAXBook.Car.prototype =
{
    get_Make: function()
    {
        return this._Make;
    },
    
    get_Model: function()
    {
        return this._Model;
    },
    
    get_MakeandModel: function()
    {
        return this._Make + " " + this._Model;
    },
    
    get_Year: function()
    {
        return this._Year;
    },
    
    dispose: function()
    {
        alert("Bye");
    }
};

AJAXBook.Car.registerClass("AJAXBook.Car");

AJAXBook.SUV = function(strMake, strModel, strYear, strDriveType)
{
    AJAXBook.SUV.initializeBase(this, [strMake, strModel, strYear]);
    this._DriveType = strDriveType;
}

AJAXBook.SUV.prototype =
{
    get_DriveType: function()
    {
       return this._DriveType;
    },

    dispose: function()
    {
        alert("Disposing instance of class SUV");
    }
}

AJAXBook.SUV.registerClass("AJAXBook.SUV", AJAXBook.Car);

AJAXBook.IStickShift = function()
{
    this.get_GearCount = Function.abstractMethod;
    this.set_GearCount = Function.abstractMethod;
    this.get_CurrentGear = Function.abstractMethod;
    this.set_CurrentGear = Function.abstractMethod;
}

AJAXBook.IStickShift.registerInterface('AJAXBook.IStickShift');

AJAXBook.SportsCar = function(strMake, strModel, strYear, strGears)
{
    AJAXBook.SportsCar.initializeBase(this, [strMake, strModel, strYear]);
    this._GearCount = strGears;
    this._CurrentGear = 0;
}

AJAXBook.SportsCar.prototype =
{
    get_GearCount: function()
    {
        return this._GearCount;
    },
    
    set_GearCount: function(strGears)
    {
        this._GearCount = strGears;
    },
    
    get_CurrentGear: function()
    {
        return this._CurrentGear;
    },
    
    set_CurrentGear: function(strCurrentGear)
    {
        this._CurrentGear = strCurrentGear;
    },
    
    dispose: function()
    {
        alert("Disposing instance of class SportsCar");
    }
}

AJAXBook.SportsCar.registerClass("AJAXBook.SportsCar", AJAXBook.Car, AJAXBook.IStickShift);

AJAXBook.ImitationSportsCar = function(strMake, strModel, strYear)
{
    AJAXBook.ImitationSportsCar.initializeBase(this, [strMake, strModel, strYear]);
}
   
AJAXBook.ImitationSportsCar.prototype =
{
    Dispose: function()
    {
         Alert("Disposing instance of class ImitationSportsCar");
    }
}

AJAXBook.ImitationSportsCar.registerClass("AJAXBook.ImitationSportsCar", AJAXBook.Car);  