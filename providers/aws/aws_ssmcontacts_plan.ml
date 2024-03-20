(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type stage__target__channel_target_info = {
  contact_channel_id : string prop;  (** contact_channel_id *)
  retry_interval_in_minutes : float prop option; [@option]
      (** retry_interval_in_minutes *)
}
[@@deriving yojson_of]
(** stage__target__channel_target_info *)

type stage__target__contact_target_info = {
  contact_id : string prop option; [@option]  (** contact_id *)
  is_essential : bool prop;  (** is_essential *)
}
[@@deriving yojson_of]
(** stage__target__contact_target_info *)

type stage__target = {
  channel_target_info : stage__target__channel_target_info list;
  contact_target_info : stage__target__contact_target_info list;
}
[@@deriving yojson_of]
(** stage__target *)

type stage = {
  duration_in_minutes : float prop;  (** duration_in_minutes *)
  target : stage__target list;
}
[@@deriving yojson_of]
(** stage *)

type aws_ssmcontacts_plan = {
  contact_id : string prop;  (** contact_id *)
  id : string prop option; [@option]  (** id *)
  stage : stage list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_plan *)

let stage__target__channel_target_info ?retry_interval_in_minutes
    ~contact_channel_id () : stage__target__channel_target_info =
  { contact_channel_id; retry_interval_in_minutes }

let stage__target__contact_target_info ?contact_id ~is_essential () :
    stage__target__contact_target_info =
  { contact_id; is_essential }

let stage__target ~channel_target_info ~contact_target_info () :
    stage__target =
  { channel_target_info; contact_target_info }

let stage ~duration_in_minutes ~target () : stage =
  { duration_in_minutes; target }

let aws_ssmcontacts_plan ?id ~contact_id ~stage () :
    aws_ssmcontacts_plan =
  { contact_id; id; stage }

type t = { contact_id : string prop; id : string prop }

let make ?id ~contact_id ~stage __id =
  let __type = "aws_ssmcontacts_plan" in
  let __attrs =
    ({
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
