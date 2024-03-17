(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_networkmanager_vpc_attachment__options = {
  appliance_mode_support : bool option; [@option]
      (** appliance_mode_support *)
  ipv6_support : bool option; [@option]  (** ipv6_support *)
}
[@@deriving yojson_of]
(** aws_networkmanager_vpc_attachment__options *)

type aws_networkmanager_vpc_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_vpc_attachment__timeouts *)

type aws_networkmanager_vpc_attachment = {
  core_network_id : string;  (** core_network_id *)
  subnet_arns : string list;  (** subnet_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_arn : string;  (** vpc_arn *)
  options : aws_networkmanager_vpc_attachment__options list;
  timeouts : aws_networkmanager_vpc_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_vpc_attachment *)

let aws_networkmanager_vpc_attachment ?tags ?timeouts
    ~core_network_id ~subnet_arns ~vpc_arn ~options __resource_id =
  let __resource_type = "aws_networkmanager_vpc_attachment" in
  let __resource =
    {
      core_network_id;
      subnet_arns;
      tags;
      vpc_arn;
      options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_vpc_attachment __resource);
  ()
