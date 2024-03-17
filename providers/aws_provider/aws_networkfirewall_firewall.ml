(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkfirewall_firewall__encryption_configuration = {
  key_id : string option; [@option]  (** key_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__encryption_configuration *)

type aws_networkfirewall_firewall__subnet_mapping = {
  ip_address_type : string option; [@option]  (** ip_address_type *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__subnet_mapping *)

type aws_networkfirewall_firewall__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__timeouts *)

type aws_networkfirewall_firewall__firewall_status__sync_states__attachment = {
  endpoint_id : string;  (** endpoint_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status__sync_states = {
  attachment :
    aws_networkfirewall_firewall__firewall_status__sync_states__attachment
    list;
      (** attachment *)
  availability_zone : string;  (** availability_zone *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status = {
  sync_states :
    aws_networkfirewall_firewall__firewall_status__sync_states list;
      (** sync_states *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall = {
  delete_protection : bool option; [@option]
      (** delete_protection *)
  description : string option; [@option]  (** description *)
  firewall_policy_arn : string;  (** firewall_policy_arn *)
  firewall_policy_change_protection : bool option; [@option]
      (** firewall_policy_change_protection *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  subnet_change_protection : bool option; [@option]
      (** subnet_change_protection *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_id : string;  (** vpc_id *)
  encryption_configuration :
    aws_networkfirewall_firewall__encryption_configuration list;
  subnet_mapping : aws_networkfirewall_firewall__subnet_mapping list;
  timeouts : aws_networkfirewall_firewall__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall *)

let aws_networkfirewall_firewall ?delete_protection ?description
    ?firewall_policy_change_protection ?id ?subnet_change_protection
    ?tags ?tags_all ?timeouts ~firewall_policy_arn ~name ~vpc_id
    ~encryption_configuration ~subnet_mapping __resource_id =
  let __resource_type = "aws_networkfirewall_firewall" in
  let __resource =
    {
      delete_protection;
      description;
      firewall_policy_arn;
      firewall_policy_change_protection;
      id;
      name;
      subnet_change_protection;
      tags;
      tags_all;
      vpc_id;
      encryption_configuration;
      subnet_mapping;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkfirewall_firewall __resource);
  ()
