(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_globalaccelerator_accelerator__attributes = {
  flow_logs_enabled : bool option; [@option]
      (** flow_logs_enabled *)
  flow_logs_s3_bucket : string option; [@option]
      (** flow_logs_s3_bucket *)
  flow_logs_s3_prefix : string option; [@option]
      (** flow_logs_s3_prefix *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator__attributes *)

type aws_globalaccelerator_accelerator__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator__timeouts *)

type aws_globalaccelerator_accelerator__ip_sets = {
  ip_addresses : string list;  (** ip_addresses *)
  ip_family : string;  (** ip_family *)
}
[@@deriving yojson_of]

type aws_globalaccelerator_accelerator = {
  enabled : bool option; [@option]  (** enabled *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  ip_addresses : string list option; [@option]  (** ip_addresses *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  attributes : aws_globalaccelerator_accelerator__attributes list;
  timeouts : aws_globalaccelerator_accelerator__timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator *)

let aws_globalaccelerator_accelerator ?enabled ?ip_address_type
    ?ip_addresses ?tags ?timeouts ~name ~attributes __resource_id =
  let __resource_type = "aws_globalaccelerator_accelerator" in
  let __resource =
    {
      enabled;
      ip_address_type;
      ip_addresses;
      name;
      tags;
      attributes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_accelerator __resource);
  ()