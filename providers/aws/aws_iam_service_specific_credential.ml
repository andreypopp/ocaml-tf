(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_service_specific_credential = {
  id : string prop option; [@option]  (** id *)
  service_name : string prop;  (** service_name *)
  status : string prop option; [@option]  (** status *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_iam_service_specific_credential *)

let aws_iam_service_specific_credential ?id ?status ~service_name
    ~user_name () : aws_iam_service_specific_credential =
  { id; service_name; status; user_name }

type t = {
  id : string prop;
  service_name : string prop;
  service_password : string prop;
  service_specific_credential_id : string prop;
  service_user_name : string prop;
  status : string prop;
  user_name : string prop;
}

let make ?id ?status ~service_name ~user_name __id =
  let __type = "aws_iam_service_specific_credential" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       service_name = Prop.computed __type __id "service_name";
       service_password =
         Prop.computed __type __id "service_password";
       service_specific_credential_id =
         Prop.computed __type __id "service_specific_credential_id";
       service_user_name =
         Prop.computed __type __id "service_user_name";
       status = Prop.computed __type __id "status";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_service_specific_credential
        (aws_iam_service_specific_credential ?id ?status
           ~service_name ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~service_name ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~service_name ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
