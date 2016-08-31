import React, { Component } from 'react'
import { Link } from 'react-router'
import PieGraph from './PieGraph'
import pieChart from './PieChart'

class UserQuestionRecord extends Component {

render(){


  const questionInfo = this.props.questionInfo
  
  return (
      <tr className="chartRow">
        <td>{questionInfo.difficulty}</td>
        <td className="questionContent">{questionInfo.content}</td>
        <td><PieGraph id = {questionInfo.id} perc={questionInfo.percentage_right} pieChart = {pieChart}/></td>
      </tr>
  )
}}

export default UserQuestionRecord