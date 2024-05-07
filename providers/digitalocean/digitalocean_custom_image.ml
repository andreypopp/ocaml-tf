(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type digitalocean_custom_image = {
  description : string prop option; [@option]
  distribution : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  regions : string prop list;
  tags : string prop list option; [@option]
  url : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_custom_image) -> ()

let yojson_of_digitalocean_custom_image =
  (function
   | {
       description = v_description;
       distribution = v_distribution;
       id = v_id;
       name = v_name;
       regions = v_regions;
       tags = v_tags;
       url = v_url;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_regions
         in
         ("regions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_distribution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distribution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_custom_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_custom_image

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
