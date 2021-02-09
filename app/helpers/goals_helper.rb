module GoalsHelper

  #here is the file for view helpers

  def check_goal_completion(goal)
    goal.update(completed: true) if goal.counter >= goal.target

    if goal.completed?
      content_tag(:p, "Congratulations you have reached your target", class: 'bootsrap classes when we get to it')
    else
      "You have not reached your target"
    end
  end 
end
