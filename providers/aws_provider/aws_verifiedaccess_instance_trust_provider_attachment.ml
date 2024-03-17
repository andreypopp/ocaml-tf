(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_instance_trust_provider_attachment = {
  id : string option; [@option]  (** id *)
  verifiedaccess_instance_id : string;
      (** verifiedaccess_instance_id *)
  verifiedaccess_trust_provider_id : string;
      (** verifiedaccess_trust_provider_id *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_trust_provider_attachment *)

let aws_verifiedaccess_instance_trust_provider_attachment ?id
    ~verifiedaccess_instance_id ~verifiedaccess_trust_provider_id
    __resource_id =
  let __resource_type =
    "aws_verifiedaccess_instance_trust_provider_attachment"
  in
  let __resource =
    {
      id;
      verifiedaccess_instance_id;
      verifiedaccess_trust_provider_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_instance_trust_provider_attachment
       __resource);
  ()
