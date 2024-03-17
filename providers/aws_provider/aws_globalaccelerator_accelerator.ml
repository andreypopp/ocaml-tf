(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_accelerator__attributes = {
  flow_logs_enabled : bool prop option; [@option]
      (** flow_logs_enabled *)
  flow_logs_s3_bucket : string prop option; [@option]
      (** flow_logs_s3_bucket *)
  flow_logs_s3_prefix : string prop option; [@option]
      (** flow_logs_s3_prefix *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator__attributes *)

type aws_globalaccelerator_accelerator__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator__timeouts *)

type aws_globalaccelerator_accelerator__ip_sets = {
  ip_addresses : string prop list;  (** ip_addresses *)
  ip_family : string prop;  (** ip_family *)
}
[@@deriving yojson_of]

type aws_globalaccelerator_accelerator = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  ip_addresses : string prop list option; [@option]
      (** ip_addresses *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  attributes : aws_globalaccelerator_accelerator__attributes list;
  timeouts : aws_globalaccelerator_accelerator__timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator *)

let aws_globalaccelerator_accelerator ?enabled ?id ?ip_address_type
    ?ip_addresses ?tags ?tags_all ?timeouts ~name ~attributes
    __resource_id =
  let __resource_type = "aws_globalaccelerator_accelerator" in
  let __resource =
    {
      enabled;
      id;
      ip_address_type;
      ip_addresses;
      name;
      tags;
      tags_all;
      attributes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_accelerator __resource);
  ()
