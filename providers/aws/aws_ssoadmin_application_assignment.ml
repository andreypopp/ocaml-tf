(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_application_assignment = {
  application_arn : string prop;  (** application_arn *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_assignment *)

let aws_ssoadmin_application_assignment ~application_arn
    ~principal_id ~principal_type () :
    aws_ssoadmin_application_assignment =
  { application_arn; principal_id; principal_type }

type t = {
  application_arn : string prop;
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

let make ~application_arn ~principal_id ~principal_type __id =
  let __type = "aws_ssoadmin_application_assignment" in
  let __attrs =
    ({
       application_arn = Prop.computed __type __id "application_arn";
       id = Prop.computed __type __id "id";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_assignment
        (aws_ssoadmin_application_assignment ~application_arn
           ~principal_id ~principal_type ());
    attrs = __attrs;
  }

let register ?tf_module ~application_arn ~principal_id
    ~principal_type __id =
  let (r : _ Tf_core.resource) =
    make ~application_arn ~principal_id ~principal_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
