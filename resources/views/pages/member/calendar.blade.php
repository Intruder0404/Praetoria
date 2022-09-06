<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Calendar') }}
        </h2>
    </x-slot>

    <div class="py-12">

        <head>
            <title>Laravel Fullcalender Add/Update/Delete Event Example Tutorial - Tutsmake.com</title>
            <meta name="csrf-token" content="{{ csrf_token() }}">
        </head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css" />


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">

        <!-- Script -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>

        <body>

            <div class="container">
                <div class="response"></div>
                <div id='calendar'></div>
                <!-- Modal -->
                <div class="modal fade" id="calendarModal">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-body">
                                <livewire:praetorian-event-form />
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </body>
        <script>
            $(document).ready(function() {

                var SITEURL = "{{ url('/') }}";
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                var calendar = $('#calendar').fullCalendar({
                    editable: true,
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    events: SITEURL + "/calendar",
                    displayEventTime: true,
                    editable: true,
                    eventRender: function(event, element, view) {
                        if (event.allDay === 'true') {
                            event.allDay = true;
                        } else {
                            event.allDay = false;
                        }
                    },
                    selectable: true,
                    selectHelper: true,
                    select: function(start, end, allDay) {

                        //$('#modal-title').html(event.title);
                        //$('#modal-body').html(event.description);
                        //$('#eventUrl').attr('href', event.url);
                        $('#calendarModal').modal("show");
                        /*const val1 = start;
                        const val2 = end;
                        const val3 = allDay;
                        alertify.prompt('Event Title:', null, function(e, title) {
                            if (title) {
                                let start = $.fullCalendar.formatDate(val1, "Y-MM-DD HH:mm:ss");
                                let end = $.fullCalendar.formatDate(val2, "Y-MM-DD HH:mm:ss");
                                $.ajax({
                                    url: SITEURL + "/calendar/create",
                                    data: 'title=' + title + '&start=' + start + '&end=' +
                                        end,
                                    type: "POST",
                                    success: function(data) {
                                        displayMessage("Added Successfully");
                                    }
                                });
                                calendar.fullCalendar('renderEvent', {
                                        title: title,
                                        start: start,
                                        end: end,
                                        allDay: val3
                                    },
                                    true
                                );
                            }
                        });*/
                        calendar.fullCalendar('unselect');
                    },
                    eventResize: function(event, delta) {
                        var start = $.fullCalendar.formatDate(event.start, 'Y-MM-DD HH:mm:ss');
                        var end = $.fullCalendar.formatDate(event.end, 'Y-MM-DD HH:mm:ss');
                        var title = event.title;
                        var id = event.id;
                        $.ajax({
                            url: "/calendar/update",
                            type: "POST",
                            data: {
                                title: title,
                                start: start,
                                end: end,
                                id: id,
                                user_update_id: {{ Auth::user()->id }}
                            },
                            success: function(response) {
                                calendar.fullCalendar('refetchEvents');
                                alertify.notify("Event Updated Successfully");
                            }
                        })
                    },
                    eventDrop: function(event, delta) {
                        var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD HH:mm:ss");
                        var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD HH:mm:ss");
                        $.ajax({
                            url: SITEURL + '/calendar/update',
                            data: 'title=' + event.title + '&start=' + start + '&end=' + end +
                                '&id=' + event.id,
                            type: "POST",
                            success: function(response) {
                                displayMessage("Updated Successfully");
                            }
                        });
                    },
                    eventClick: function(event) {
                        var deleteMsg = confirm("Do you really want to delete?");
                        if (deleteMsg) {
                            $.ajax({
                                type: "POST",
                                url: SITEURL + '/calendar/delete',
                                data: "&id=" + event.id,
                                success: function(response) {
                                    if (parseInt(response) > 0) {
                                        $('#calendar').fullCalendar('removeEvents', event.id);
                                        displayMessage("Deleted Successfully");
                                    }
                                }
                            });
                        }
                    }

                });
            });

            function displayMessage(message) {
                $(".response").html("<div class='success'>" + message + "</div>");
                setInterval(function() {
                    $(".success").fadeOut();
                }, 1000);
            }
        </script>
</x-app-layout>
