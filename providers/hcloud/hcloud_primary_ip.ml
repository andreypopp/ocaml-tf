(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_primary_ip = {
  assignee_id : float prop option; [@option]  (** assignee_id *)
  assignee_type : string prop;  (** assignee_type *)
  auto_delete : bool prop;  (** auto_delete *)
  datacenter : string prop option; [@option]  (** datacenter *)
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_primary_ip *)

let hcloud_primary_ip ?assignee_id ?datacenter ?delete_protection ?id
    ?labels ?name ~assignee_type ~auto_delete ~type_ () :
    hcloud_primary_ip =
  {
    assignee_id;
    assignee_type;
    auto_delete;
    datacenter;
    delete_protection;
    id;
    labels;
    name;
    type_;
  }

type t = {
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  type_ : string prop;
}

let register ?tf_module ?assignee_id ?datacenter ?delete_protection
    ?id ?labels ?name ~assignee_type ~auto_delete ~type_
    __resource_id =
  let __resource_type = "hcloud_primary_ip" in
  let __resource =
    hcloud_primary_ip ?assignee_id ?datacenter ?delete_protection ?id
      ?labels ?name ~assignee_type ~auto_delete ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_primary_ip __resource);
  let __resource_attributes =
    ({
       assignee_id =
         Prop.computed __resource_type __resource_id "assignee_id";
       assignee_type =
         Prop.computed __resource_type __resource_id "assignee_type";
       auto_delete =
         Prop.computed __resource_type __resource_id "auto_delete";
       datacenter =
         Prop.computed __resource_type __resource_id "datacenter";
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       ip_network =
         Prop.computed __resource_type __resource_id "ip_network";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
