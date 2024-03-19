(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_hsm_client_certificate = {
  hsm_client_certificate_identifier : string prop;
      (** hsm_client_certificate_identifier *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_client_certificate *)

let aws_redshift_hsm_client_certificate ?id ?tags ?tags_all
    ~hsm_client_certificate_identifier () :
    aws_redshift_hsm_client_certificate =
  { hsm_client_certificate_identifier; id; tags; tags_all }

type t = {
  arn : string prop;
  hsm_client_certificate_identifier : string prop;
  hsm_client_certificate_public_key : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~hsm_client_certificate_identifier __resource_id =
  let __resource_type = "aws_redshift_hsm_client_certificate" in
  let __resource =
    aws_redshift_hsm_client_certificate ?id ?tags ?tags_all
      ~hsm_client_certificate_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_client_certificate __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       hsm_client_certificate_identifier =
         Prop.computed __resource_type __resource_id
           "hsm_client_certificate_identifier";
       hsm_client_certificate_public_key =
         Prop.computed __resource_type __resource_id
           "hsm_client_certificate_public_key";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
