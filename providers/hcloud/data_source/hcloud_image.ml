(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_image = {
  id : float prop option; [@option]
  include_deprecated : bool prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  selector : string prop option; [@option]
  with_architecture : string prop option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_image) -> ()

let yojson_of_hcloud_image =
  (function
   | {
       id = v_id;
       include_deprecated = v_include_deprecated;
       most_recent = v_most_recent;
       name = v_name;
       selector = v_selector;
       with_architecture = v_with_architecture;
       with_selector = v_with_selector;
       with_status = v_with_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "with_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_with_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_architecture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
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
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_deprecated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_deprecated", arg in
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
    : hcloud_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_image

[@@@deriving.end]

let hcloud_image ?id ?include_deprecated ?most_recent ?name ?selector
    ?with_architecture ?with_selector ?with_status () : hcloud_image
    =
  {
    id;
    include_deprecated;
    most_recent;
    name;
    selector;
    with_architecture;
    with_selector;
    with_status;
  }

type t = {
  tf_name : string;
  architecture : string prop;
  created : string prop;
  deprecated : string prop;
  description : string prop;
  id : float prop;
  include_deprecated : bool prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  os_flavor : string prop;
  os_version : string prop;
  rapid_deploy : bool prop;
  selector : string prop;
  type_ : string prop;
  with_architecture : string prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?include_deprecated ?most_recent ?name ?selector
    ?with_architecture ?with_selector ?with_status __id =
  let __type = "hcloud_image" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       created = Prop.computed __type __id "created";
       deprecated = Prop.computed __type __id "deprecated";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       include_deprecated =
         Prop.computed __type __id "include_deprecated";
       labels = Prop.computed __type __id "labels";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       os_flavor = Prop.computed __type __id "os_flavor";
       os_version = Prop.computed __type __id "os_version";
       rapid_deploy = Prop.computed __type __id "rapid_deploy";
       selector = Prop.computed __type __id "selector";
       type_ = Prop.computed __type __id "type";
       with_architecture =
         Prop.computed __type __id "with_architecture";
       with_selector = Prop.computed __type __id "with_selector";
       with_status = Prop.computed __type __id "with_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_image
        (hcloud_image ?id ?include_deprecated ?most_recent ?name
           ?selector ?with_architecture ?with_selector ?with_status
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_deprecated ?most_recent ?name
    ?selector ?with_architecture ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_deprecated ?most_recent ?name ?selector
      ?with_architecture ?with_selector ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
