(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection_group = {
  aggregation : string;  (** aggregation *)
  members : string list option; [@option]  (** members *)
  pattern : string;  (** pattern *)
  protection_group_id : string;  (** protection_group_id *)
  resource_type : string option; [@option]  (** resource_type *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_shield_protection_group *)

let aws_shield_protection_group ?members ?resource_type ?tags
    ~aggregation ~pattern ~protection_group_id __resource_id =
  let __resource_type = "aws_shield_protection_group" in
  let __resource =
    {
      aggregation;
      members;
      pattern;
      protection_group_id;
      resource_type;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection_group __resource);
  ()
