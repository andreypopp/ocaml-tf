(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_globalaccelerator_custom_routing_accelerator = {
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
(** aws_globalaccelerator_custom_routing_accelerator *)

let attributes ?flow_logs_enabled ?flow_logs_s3_bucket
    ?flow_logs_s3_prefix () : attributes =
  { flow_logs_enabled; flow_logs_s3_bucket; flow_logs_s3_prefix }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_globalaccelerator_custom_routing_accelerator ?enabled ?id
    ?ip_address_type ?ip_addresses ?tags ?tags_all ?timeouts ~name
    ~attributes () : aws_globalaccelerator_custom_routing_accelerator
    =
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

let make ?enabled ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
    ?timeouts ~name ~attributes __id =
  let __type = "aws_globalaccelerator_custom_routing_accelerator" in
  let __attrs =
    ({
       dns_name = Prop.computed __type __id "dns_name";
       enabled = Prop.computed __type __id "enabled";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       ip_addresses = Prop.computed __type __id "ip_addresses";
       ip_sets = Prop.computed __type __id "ip_sets";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_accelerator
        (aws_globalaccelerator_custom_routing_accelerator ?enabled
           ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
           ?timeouts ~name ~attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?ip_address_type ?ip_addresses
    ?tags ?tags_all ?timeouts ~name ~attributes __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
      ?timeouts ~name ~attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
