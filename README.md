# Smart Contract

## Description

This smart contract contains an array of sensor values. You can add sensor value in the array then you can calculate the average of the value by giving the certain sensor name.


## Running this contract 

### Clone the repository 
```sh
git clone https://github.com/daud99/CalculateAvg.git
```
This will show if there are any errors or not
```sh
truffle test
```
```sh
truffle migrate
```

### Commands to test this contract

```sh
// .at(x) on 22nd line is nothing but where the contract is deployed you will get it when you run truffle migrate

var ca;
CalculateAvg.at("0x9c356758167876166f8ff7aebccd94ee9a460525").then( function(x) { ca = x });
ca.addSensorValue("sensor A", 1253);
ca.calculateAvgForSensor("sensor A");
```


## Creating smart contract from scratch

```sh
mkdir folder_name
cd folder_name
```

```sh
truffle init
```

> Note
> In Case the above command give error use the following command
>  ```sh
>  git clone https://github.com/truffle-box/bare-box.git
>  ```


