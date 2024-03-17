(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance_group_named_port__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_instance_group_named_port__timeouts *)

type google_compute_instance_group_named_port = {
  group : string prop;  (** The name of the instance group. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name for this named port. The name must be 1-63 characters
long, and comply with RFC1035. *)
  port : float prop;
      (** The port number, which can be a value between 1 and 65535. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** The zone of the instance group. *)
  timeouts :
    google_compute_instance_group_named_port__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_named_port *)

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let google_compute_instance_group_named_port ?id ?project ?zone
    ?timeouts ~group ~name ~port __resource_id =
  let __resource_type = "google_compute_instance_group_named_port" in
  let __resource =
    ({ group; id; name; port; project; zone; timeouts }
      : google_compute_instance_group_named_port)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group_named_port __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
