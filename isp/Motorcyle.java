package isp;

class Motorcycle implements VehicleInterface {
    // Can be implemented
    @Override
    public void drive() {
    }

    @Override
    public void stop() {
    }

    @Override
    public void refuel() {
    }

    // Can not be implemented karena motor tidak punya pintu
    @Override
    public void openDoors() {
    }
}
