(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_hsm_client_certificate = {
  hsm_client_certificate_identifier : string;
      (** hsm_client_certificate_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_client_certificate *)

let aws_redshift_hsm_client_certificate ?tags
    ~hsm_client_certificate_identifier __resource_id =
  let __resource_type = "aws_redshift_hsm_client_certificate" in
  let __resource = { hsm_client_certificate_identifier; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_client_certificate __resource);
  ()
