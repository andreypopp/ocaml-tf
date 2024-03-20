(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_application_access_scope = {
  application_arn : string prop;  (** application_arn *)
  authorized_targets : string prop list option; [@option]
      (** authorized_targets *)
  scope : string prop;  (** scope *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_access_scope *)

let aws_ssoadmin_application_access_scope ?authorized_targets
    ~application_arn ~scope () :
    aws_ssoadmin_application_access_scope =
  { application_arn; authorized_targets; scope }

type t = {
  application_arn : string prop;
  authorized_targets : string list prop;
  id : string prop;
  scope : string prop;
}

let make ?authorized_targets ~application_arn ~scope __id =
  let __type = "aws_ssoadmin_application_access_scope" in
  let __attrs =
    ({
       application_arn = Prop.computed __type __id "application_arn";
       authorized_targets =
         Prop.computed __type __id "authorized_targets";
       id = Prop.computed __type __id "id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_access_scope
        (aws_ssoadmin_application_access_scope ?authorized_targets
           ~application_arn ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_targets ~application_arn ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_targets ~application_arn ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
