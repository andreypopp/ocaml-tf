(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type stage__target__channel_target_info = {
  contact_channel_id : string prop;
  retry_interval_in_minutes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage__target__channel_target_info) -> ()

let yojson_of_stage__target__channel_target_info =
  (function
   | {
       contact_channel_id = v_contact_channel_id;
       retry_interval_in_minutes = v_retry_interval_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retry_interval_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_interval_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_contact_channel_id
         in
         ("contact_channel_id", arg) :: bnds
       in
       `Assoc bnds
    : stage__target__channel_target_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage__target__channel_target_info

[@@@deriving.end]

type stage__target__contact_target_info = {
  contact_id : string prop option; [@option]
  is_essential : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage__target__contact_target_info) -> ()

let yojson_of_stage__target__contact_target_info =
  (function
   | { contact_id = v_contact_id; is_essential = v_is_essential } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_essential in
         ("is_essential", arg) :: bnds
       in
       let bnds =
         match v_contact_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stage__target__contact_target_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage__target__contact_target_info

[@@@deriving.end]

type stage__target = {
  channel_target_info : stage__target__channel_target_info list;
  contact_target_info : stage__target__contact_target_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage__target) -> ()

let yojson_of_stage__target =
  (function
   | {
       channel_target_info = v_channel_target_info;
       contact_target_info = v_contact_target_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_stage__target__contact_target_info
             v_contact_target_info
         in
         ("contact_target_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_stage__target__channel_target_info
             v_channel_target_info
         in
         ("channel_target_info", arg) :: bnds
       in
       `Assoc bnds
    : stage__target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage__target

[@@@deriving.end]

type stage = {
  duration_in_minutes : float prop;
  target : stage__target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage) -> ()

let yojson_of_stage =
  (function
   | {
       duration_in_minutes = v_duration_in_minutes;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_stage__target v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_duration_in_minutes
         in
         ("duration_in_minutes", arg) :: bnds
       in
       `Assoc bnds
    : stage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage

[@@@deriving.end]

type aws_ssmcontacts_plan = {
  contact_id : string prop;
  id : string prop option; [@option]
  stage : stage list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmcontacts_plan) -> ()

let yojson_of_aws_ssmcontacts_plan =
  (function
   | { contact_id = v_contact_id; id = v_id; stage = v_stage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_stage v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_contact_id in
         ("contact_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssmcontacts_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmcontacts_plan

[@@@deriving.end]

let stage__target__channel_target_info ?retry_interval_in_minutes
    ~contact_channel_id () : stage__target__channel_target_info =
  { contact_channel_id; retry_interval_in_minutes }

let stage__target__contact_target_info ?contact_id ~is_essential () :
    stage__target__contact_target_info =
  { contact_id; is_essential }

let stage__target ?(channel_target_info = [])
    ?(contact_target_info = []) () : stage__target =
  { channel_target_info; contact_target_info }

let stage ?(target = []) ~duration_in_minutes () : stage =
  { duration_in_minutes; target }

let aws_ssmcontacts_plan ?id ~contact_id ~stage () :
    aws_ssmcontacts_plan =
  { contact_id; id; stage }

type t = {
  tf_name : string;
  contact_id : string prop;
  id : string prop;
}

let make ?id ~contact_id ~stage __id =
  let __type = "aws_ssmcontacts_plan" in
  let __attrs =
    ({
       tf_name = __id;
       contact_id = Prop.computed __type __id "contact_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmcontacts_plan
        (aws_ssmcontacts_plan ?id ~contact_id ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~contact_id ~stage __id =
  let (r : _ Tf_core.resource) = make ?id ~contact_id ~stage __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
