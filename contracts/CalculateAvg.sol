 pragma solidity ^0.4.0;

 contract CalculateAvg {
     
     struct SensorValue {
         uint id;
         string name;
         uint value;
     }

     SensorValue[] public sensor_values;
     uint public nextId = 0;
     // Function top add sensor value

     function addSensorValue(string memory name, uint value) public {
            sensor_values.push(SensorValue(nextId, name, value));
            nextId++;
     }
     
    function calculateAvgForSensor(string memory name) public view returns (string , uint) {
        uint avg = 0;
        uint total = 0;
        for(uint i = 0; i < sensor_values.length; i++)
        {
            if(compareString(sensor_values[i].name, name))
            {
                avg += sensor_values[i].value;
                total++;
            }
        }
        return (name, avg/total);
    }

    function compareString(string a, string b) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }


 }