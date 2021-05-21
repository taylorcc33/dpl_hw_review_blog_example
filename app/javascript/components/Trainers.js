import React from "react";

const Trainers = (props) => {
  const { trainers } = props;

  const renderTrainers = () => {
    return trainers.map((trainer) => {
      return <h3>{trainer.name}</h3>;
    });
  };

  return (
    <div>
      <h1>All Pokemon Trainers!</h1>
      {renderTrainers()}
    </div>
  );
};

export default Trainers;
