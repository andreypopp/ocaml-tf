(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_signing_certificate = {
  certificate_body : string prop;  (** certificate_body *)
  id : string prop option; [@option]  (** id *)
  status : string prop option; [@option]  (** status *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_iam_signing_certificate *)

let aws_iam_signing_certificate ?id ?status ~certificate_body
    ~user_name () : aws_iam_signing_certificate =
  { certificate_body; id; status; user_name }

type t = {
  certificate_body : string prop;
  certificate_id : string prop;
  id : string prop;
  status : string prop;
  user_name : string prop;
}

let make ?id ?status ~certificate_body ~user_name __id =
  let __type = "aws_iam_signing_certificate" in
  let __attrs =
    ({
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_id = Prop.computed __type __id "certificate_id";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_signing_certificate
        (aws_iam_signing_certificate ?id ?status ~certificate_body
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~certificate_body ~user_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~certificate_body ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
