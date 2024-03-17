(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_ipam_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool__timeouts *)

type aws_vpc_ipam_pool = {
  address_family : string;  (** address_family *)
  allocation_default_netmask_length : float option; [@option]
      (** allocation_default_netmask_length *)
  allocation_max_netmask_length : float option; [@option]
      (** allocation_max_netmask_length *)
  allocation_min_netmask_length : float option; [@option]
      (** allocation_min_netmask_length *)
  allocation_resource_tags : (string * string) list option; [@option]
      (** allocation_resource_tags *)
  auto_import : bool option; [@option]  (** auto_import *)
  aws_service : string option; [@option]  (** aws_service *)
  description : string option; [@option]  (** description *)
  ipam_scope_id : string;  (** ipam_scope_id *)
  locale : string option; [@option]  (** locale *)
  public_ip_source : string option; [@option]
      (** public_ip_source *)
  publicly_advertisable : bool option; [@option]
      (** publicly_advertisable *)
  source_ipam_pool_id : string option; [@option]
      (** source_ipam_pool_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_vpc_ipam_pool__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool *)

let aws_vpc_ipam_pool ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?description
    ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?timeouts ~address_family
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
      ipam_scope_id;
      locale;
      public_ip_source;
      publicly_advertisable;
      source_ipam_pool_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool __resource);
  ()
