(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_destination_policy = {
  access_policy : string prop;  (** access_policy *)
  destination_name : string prop;  (** destination_name *)
  force_update : bool prop option; [@option]  (** force_update *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination_policy *)

let aws_cloudwatch_log_destination_policy ?force_update ?id
    ~access_policy ~destination_name () :
    aws_cloudwatch_log_destination_policy =
  { access_policy; destination_name; force_update; id }

type t = {
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop;
  id : string prop;
}

let make ?force_update ?id ~access_policy ~destination_name __id =
  let __type = "aws_cloudwatch_log_destination_policy" in
  let __attrs =
    ({
       access_policy = Prop.computed __type __id "access_policy";
       destination_name =
         Prop.computed __type __id "destination_name";
       force_update = Prop.computed __type __id "force_update";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_destination_policy
        (aws_cloudwatch_log_destination_policy ?force_update ?id
           ~access_policy ~destination_name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_update ?id ~access_policy
    ~destination_name __id =
  let (r : _ Tf_core.resource) =
    make ?force_update ?id ~access_policy ~destination_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
