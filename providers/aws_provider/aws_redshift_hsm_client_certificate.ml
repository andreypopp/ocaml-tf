(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_hsm_client_certificate = {
  hsm_client_certificate_identifier : string;
      (** hsm_client_certificate_identifier *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_client_certificate *)

let aws_redshift_hsm_client_certificate ?id ?tags ?tags_all
    ~hsm_client_certificate_identifier __resource_id =
  let __resource_type = "aws_redshift_hsm_client_certificate" in
  let __resource =
    { hsm_client_certificate_identifier; id; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_hsm_client_certificate __resource);
  ()
