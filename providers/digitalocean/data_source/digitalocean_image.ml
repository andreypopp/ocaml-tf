(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_image = {
  id : float prop option; [@option]
  name : string prop option; [@option]
  slug : string prop option; [@option]
  source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_image) -> ()

let yojson_of_digitalocean_image =
  (function
   | { id = v_id; name = v_name; slug = v_slug; source = v_source }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_image

[@@@deriving.end]

let digitalocean_image ?id ?name ?slug ?source () :
    digitalocean_image =
  { id; name; slug; source }

type t = {
  created : string prop;
  description : string prop;
  distribution : string prop;
  error_message : string prop;
  id : float prop;
  image : string prop;
  min_disk_size : float prop;
  name : string prop;
  private_ : bool prop;
  regions : string list prop;
  size_gigabytes : float prop;
  slug : string prop;
  source : string prop;
  status : string prop;
  tags : string list prop;
  type_ : string prop;
}

let make ?id ?name ?slug ?source __id =
  let __type = "digitalocean_image" in
  let __attrs =
    ({
       created = Prop.computed __type __id "created";
       description = Prop.computed __type __id "description";
       distribution = Prop.computed __type __id "distribution";
       error_message = Prop.computed __type __id "error_message";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       name = Prop.computed __type __id "name";
       private_ = Prop.computed __type __id "private";
       regions = Prop.computed __type __id "regions";
       size_gigabytes = Prop.computed __type __id "size_gigabytes";
       slug = Prop.computed __type __id "slug";
       source = Prop.computed __type __id "source";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_image
        (digitalocean_image ?id ?name ?slug ?source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?slug ?source __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?slug ?source __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
