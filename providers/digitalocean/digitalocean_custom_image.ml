(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?distribution ?id ?tags ?timeouts ~name
    ~regions ~url __id =
  let __type = "digitalocean_custom_image" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       distribution = Prop.computed __type __id "distribution";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       name = Prop.computed __type __id "name";
       public = Prop.computed __type __id "public";
       regions = Prop.computed __type __id "regions";
       size_gigabytes = Prop.computed __type __id "size_gigabytes";
       slug = Prop.computed __type __id "slug";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_custom_image
        (digitalocean_custom_image ?description ?distribution ?id
           ?tags ?timeouts ~name ~regions ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?distribution ?id ?tags
    ?timeouts ~name ~regions ~url __id =
  let (r : _ Tf_core.resource) =
    make ?description ?distribution ?id ?tags ?timeouts ~name
      ~regions ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
