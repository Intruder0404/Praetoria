<?php

namespace App\Http\Controllers;

use App\Models\Calendar\CalendarEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;

class CalendarController extends Controller
{
    public function index()
    {
        if (request()->ajax()) {

            $start = (!empty($_GET["start"])) ? ($_GET["start"]) : ('');
            $end = (!empty($_GET["end"])) ? ($_GET["end"]) : ('');

            $data = CalendarEvent::whereDate('start', '>=', $start)->whereDate('end',   '<=', $end)->where('user_delete_id','IS', null)->get(['id', 'title', 'start', 'end']);
            return Response::json($data);
        }
        return view('pages.member.calendar');
    }


    public function create(Request $request)
    {
        $insertArr = [
            'title' => $request->title,
            'start' => $request->start,
            'end' => $request->end,
            'user_create_id' => Auth::user()->id
        ];
        $event = CalendarEvent::insert($insertArr);
        return Response::json($event);
    }


    public function update(Request $request)
    {
        $where = array('id' => $request->id);
        $updateArr = [
            'title' => $request->title,
            'start' => $request->start,
            'end' => $request->end,
            'user_update_id' => Auth::user()->id
        ];
        $event  = CalendarEvent::where($where)->update($updateArr);

        return Response::json($event);
    }


    public function destroy(Request $request)
    {
        $where = array('id' => $request->id);
        $updateArr = [
            'user_delete_id' => Auth::user()->id
        ];
        $event  = CalendarEvent::where($where)->update($updateArr);

        return Response::json($event);
    }
}
