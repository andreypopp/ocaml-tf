(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?status ~certificate_body ~user_name
    __resource_id =
  let __resource_type = "aws_iam_signing_certificate" in
  let __resource =
    aws_iam_signing_certificate ?id ?status ~certificate_body
      ~user_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_signing_certificate __resource);
  let __resource_attributes =
    ({
       certificate_body =
         Prop.computed __resource_type __resource_id
           "certificate_body";
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       id = Prop.computed __resource_type __resource_id "id";
       status = Prop.computed __resource_type __resource_id "status";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
