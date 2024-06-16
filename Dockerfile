FROM ros:jazzy

COPY . ./src/
WORKDIR src

RUN apt update
RUN rosdep install -i -y --from-paths .
RUN colcon build

RUN cp -a install/ /opt/ros/myrobot

CMD bash -c "source /opt/ros/myrobot/setup.bash && ros2 run add_int_service service_main"
