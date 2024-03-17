(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_verifiedaccess_group__sse_configuration = {
  customer_managed_key_enabled : bool option; [@option]
      (** customer_managed_key_enabled *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_group__sse_configuration *)

type aws_verifiedaccess_group = {
  policy_document : string option; [@option]  (** policy_document *)
  tags : (string * string) list option; [@option]  (** tags *)
  verifiedaccess_instance_id : string;
      (** verifiedaccess_instance_id *)
  sse_configuration :
    aws_verifiedaccess_group__sse_configuration list;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_group *)

let aws_verifiedaccess_group ?policy_document ?tags
    ~verifiedaccess_instance_id ~sse_configuration __resource_id =
  let __resource_type = "aws_verifiedaccess_group" in
  let __resource =
    {
      policy_document;
      tags;
      verifiedaccess_instance_id;
      sse_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_group __resource);
  ()
