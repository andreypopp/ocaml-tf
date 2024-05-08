(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_project_resources = {
  id : string prop option; [@option]
  project : string prop;
  resources : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_project_resources) -> ()

let yojson_of_digitalocean_project_resources =
  (function
   | { id = v_id; project = v_project; resources = v_resources } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_project_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_project_resources

[@@@deriving.end]

let digitalocean_project_resources ?id ~project ~resources () :
    digitalocean_project_resources =
  { id; project; resources }

type t = {
  tf_name : string;
  id : string prop;
  project : string prop;
  resources : string list prop;
}

let make ?id ~project ~resources __id =
  let __type = "digitalocean_project_resources" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       resources = Prop.computed __type __id "resources";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_project_resources
        (digitalocean_project_resources ?id ~project ~resources ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~project ~resources __id =
  let (r : _ Tf_core.resource) = make ?id ~project ~resources __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
