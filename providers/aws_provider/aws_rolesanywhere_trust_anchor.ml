(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rolesanywhere_trust_anchor__source__source_data = {
  acm_pca_arn : string option; [@option]  (** acm_pca_arn *)
  x509_certificate_data : string option; [@option]
      (** x509_certificate_data *)
}
[@@deriving yojson_of]
(** aws_rolesanywhere_trust_anchor__source__source_data *)

type aws_rolesanywhere_trust_anchor__source = {
  source_type : string;  (** source_type *)
  source_data :
    aws_rolesanywhere_trust_anchor__source__source_data list;
}
[@@deriving yojson_of]
(** aws_rolesanywhere_trust_anchor__source *)

type aws_rolesanywhere_trust_anchor = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  source : aws_rolesanywhere_trust_anchor__source list;
}
[@@deriving yojson_of]
(** aws_rolesanywhere_trust_anchor *)

let aws_rolesanywhere_trust_anchor ?tags ~name ~source __resource_id
    =
  let __resource_type = "aws_rolesanywhere_trust_anchor" in
  let __resource = { name; tags; source } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rolesanywhere_trust_anchor __resource);
  ()
