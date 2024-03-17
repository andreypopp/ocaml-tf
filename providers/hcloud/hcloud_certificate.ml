(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_certificate = {
  certificate : string prop;  (** certificate *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** hcloud_certificate *)

type t = {
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  private_key : string prop;
  type_ : string prop;
}

let hcloud_certificate ?id ?labels ~certificate ~name ~private_key
    __resource_id =
  let __resource_type = "hcloud_certificate" in
  let __resource =
    ({ certificate; id; labels; name; private_key }
      : hcloud_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_certificate __resource);
  let __resource_attributes =
    ({
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       created =
         Prop.computed __resource_type __resource_id "created";
       domain_names =
         Prop.computed __resource_type __resource_id "domain_names";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       not_valid_after =
         Prop.computed __resource_type __resource_id
           "not_valid_after";
       not_valid_before =
         Prop.computed __resource_type __resource_id
           "not_valid_before";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
