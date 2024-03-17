(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration = {
  kms_key_arn : string;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration *)

type aws_chimesdkvoice_voice_profile_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain__timeouts *)

type aws_chimesdkvoice_voice_profile_domain = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  server_side_encryption_configuration :
    aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration
    list;
  timeouts : aws_chimesdkvoice_voice_profile_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain *)

let aws_chimesdkvoice_voice_profile_domain ?description ?tags
    ?timeouts ~name ~server_side_encryption_configuration
    __resource_id =
  let __resource_type = "aws_chimesdkvoice_voice_profile_domain" in
  let __resource =
    {
      description;
      name;
      tags;
      server_side_encryption_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_voice_profile_domain __resource);
  ()
