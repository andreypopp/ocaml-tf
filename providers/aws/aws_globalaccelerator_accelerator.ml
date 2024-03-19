(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attributes = {
  flow_logs_enabled : bool prop option; [@option]
      (** flow_logs_enabled *)
  flow_logs_s3_bucket : string prop option; [@option]
      (** flow_logs_s3_bucket *)
  flow_logs_s3_prefix : string prop option; [@option]
      (** flow_logs_s3_prefix *)
}
[@@deriving yojson_of]
(** attributes *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type ip_sets = {
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
  attributes : attributes list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_accelerator *)

let attributes ?flow_logs_enabled ?flow_logs_s3_bucket
    ?flow_logs_s3_prefix () : attributes =
  { flow_logs_enabled; flow_logs_s3_bucket; flow_logs_s3_prefix }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_globalaccelerator_accelerator ?enabled ?id ?ip_address_type
    ?ip_addresses ?tags ?tags_all ?timeouts ~name ~attributes () :
    aws_globalaccelerator_accelerator =
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

type t = {
  dns_name : string prop;
  dual_stack_dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_addresses : string list prop;
  ip_sets : ip_sets list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?enabled ?id ?ip_address_type ?ip_addresses
    ?tags ?tags_all ?timeouts ~name ~attributes __resource_id =
  let __resource_type = "aws_globalaccelerator_accelerator" in
  let __resource =
    aws_globalaccelerator_accelerator ?enabled ?id ?ip_address_type
      ?ip_addresses ?tags ?tags_all ?timeouts ~name ~attributes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_accelerator __resource);
  let __resource_attributes =
    ({
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       dual_stack_dns_name =
         Prop.computed __resource_type __resource_id
           "dual_stack_dns_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       ip_addresses =
         Prop.computed __resource_type __resource_id "ip_addresses";
       ip_sets =
         Prop.computed __resource_type __resource_id "ip_sets";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
