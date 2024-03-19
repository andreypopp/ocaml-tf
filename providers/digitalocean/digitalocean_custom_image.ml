(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type digitalocean_custom_image = {
  description : string prop option; [@option]  (** description *)
  distribution : string prop option; [@option]  (** distribution *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  regions : string prop list;  (** regions *)
  tags : string prop list option; [@option]  (** tags *)
  url : string prop;  (** url *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_custom_image *)

let timeouts ?create () : timeouts = { create }

let digitalocean_custom_image ?description ?distribution ?id ?tags
    ?timeouts ~name ~regions ~url () : digitalocean_custom_image =
  {
    description;
    distribution;
    id;
    name;
    regions;
    tags;
    url;
    timeouts;
  }

type t = {
  created_at : string prop;
  description : string prop;
  distribution : string prop;
  id : string prop;
  image_id : float prop;
  min_disk_size : float prop;
  name : string prop;
  public : bool prop;
  regions : string list prop;
  size_gigabytes : float prop;
  slug : string prop;
  status : string prop;
  tags : string list prop;
  type_ : string prop;
  url : string prop;
}

let register ?tf_module ?description ?distribution ?id ?tags
    ?timeouts ~name ~regions ~url __resource_id =
  let __resource_type = "digitalocean_custom_image" in
  let __resource =
    digitalocean_custom_image ?description ?distribution ?id ?tags
      ?timeouts ~name ~regions ~url ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_custom_image __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       distribution =
         Prop.computed __resource_type __resource_id "distribution";
       id = Prop.computed __resource_type __resource_id "id";
       image_id =
         Prop.computed __resource_type __resource_id "image_id";
       min_disk_size =
         Prop.computed __resource_type __resource_id "min_disk_size";
       name = Prop.computed __resource_type __resource_id "name";
       public = Prop.computed __resource_type __resource_id "public";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       size_gigabytes =
         Prop.computed __resource_type __resource_id "size_gigabytes";
       slug = Prop.computed __resource_type __resource_id "slug";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
