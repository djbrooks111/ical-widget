# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
command: "'ical.widget/icalBuddy' -sd -n eventsToday+1 2>/dev/null"

# the refresh frequency is 1 hour
refreshFrequency: 3600000

style: """
  top: 10px
  right: 50%
  color: #fff
  font-family: Helvetica Neue
  
  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 24px
    font-weight: 100
"""


render: -> """
  <div class='ical'></div>
"""

update: (output, domEl) ->
  $(domEl).find('.ical').html(output)

