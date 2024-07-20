(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_sources__amazon_code_guru_profiler = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_sources__amazon_code_guru_profiler) -> ()

let yojson_of_event_sources__amazon_code_guru_profiler =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : event_sources__amazon_code_guru_profiler ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_sources__amazon_code_guru_profiler

[@@@deriving.end]

type event_sources = {
  amazon_code_guru_profiler :
    event_sources__amazon_code_guru_profiler list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_sources) -> ()

let yojson_of_event_sources =
  (function
   | { amazon_code_guru_profiler = v_amazon_code_guru_profiler } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_amazon_code_guru_profiler then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_event_sources__amazon_code_guru_profiler)
               v_amazon_code_guru_profiler
           in
           let bnd = "amazon_code_guru_profiler", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : event_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_sources

[@@@deriving.end]

type aws_devopsguru_event_sources_config = {
  event_sources : event_sources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devopsguru_event_sources_config) -> ()

let yojson_of_aws_devopsguru_event_sources_config =
  (function
   | { event_sources = v_event_sources } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_event_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_sources) v_event_sources
           in
           let bnd = "event_sources", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_devopsguru_event_sources_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devopsguru_event_sources_config

[@@@deriving.end]

let event_sources__amazon_code_guru_profiler ~status () :
    event_sources__amazon_code_guru_profiler =
  { status }

let event_sources ?(amazon_code_guru_profiler = []) () :
    event_sources =
  { amazon_code_guru_profiler }

let aws_devopsguru_event_sources_config ?(event_sources = []) () :
    aws_devopsguru_event_sources_config =
  { event_sources }

type t = { tf_name : string; id : string prop }

let make ?(event_sources = []) __id =
  let __type = "aws_devopsguru_event_sources_config" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devopsguru_event_sources_config
        (aws_devopsguru_event_sources_config ~event_sources ());
    attrs = __attrs;
  }

let register ?tf_module ?(event_sources = []) __id =
  let (r : _ Tf_core.resource) = make ~event_sources __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
