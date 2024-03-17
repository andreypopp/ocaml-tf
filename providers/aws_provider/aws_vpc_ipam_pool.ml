(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool__timeouts *)

type aws_vpc_ipam_pool = {
  address_family : string prop;  (** address_family *)
  allocation_default_netmask_length : float prop option; [@option]
      (** allocation_default_netmask_length *)
  allocation_max_netmask_length : float prop option; [@option]
      (** allocation_max_netmask_length *)
  allocation_min_netmask_length : float prop option; [@option]
      (** allocation_min_netmask_length *)
  allocation_resource_tags : (string * string prop) list option;
      [@option]
      (** allocation_resource_tags *)
  auto_import : bool prop option; [@option]  (** auto_import *)
  aws_service : string prop option; [@option]  (** aws_service *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  ipam_scope_id : string prop;  (** ipam_scope_id *)
  locale : string prop option; [@option]  (** locale *)
  public_ip_source : string prop option; [@option]
      (** public_ip_source *)
  publicly_advertisable : bool prop option; [@option]
      (** publicly_advertisable *)
  source_ipam_pool_id : string prop option; [@option]
      (** source_ipam_pool_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_vpc_ipam_pool__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool *)

let aws_vpc_ipam_pool ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?description
    ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id __resource_id =
  let __resource_type = "aws_vpc_ipam_pool" in
  let __resource =
    {
      address_family;
      allocation_default_netmask_length;
      allocation_max_netmask_length;
      allocation_min_netmask_length;
      allocation_resource_tags;
      auto_import;
      aws_service;
      description;
      id;
      ipam_scope_id;
      locale;
      public_ip_source;
      publicly_advertisable;
      source_ipam_pool_id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool __resource);
  ()
