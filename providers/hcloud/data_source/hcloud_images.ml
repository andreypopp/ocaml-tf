(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type images = {
  architecture : string prop;
  created : string prop;
  deprecated : string prop;
  description : string prop;
  id : float prop;
  labels : (string * string prop) list;
  name : string prop;
  os_flavor : string prop;
  os_version : string prop;
  rapid_deploy : bool prop;
  selector : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : images) -> ()

let yojson_of_images =
  (function
   | {
       architecture = v_architecture;
       created = v_created;
       deprecated = v_deprecated;
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       os_flavor = v_os_flavor;
       os_version = v_os_version;
       rapid_deploy = v_rapid_deploy;
       selector = v_selector;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_rapid_deploy in
         ("rapid_deploy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_version in
         ("os_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_flavor in
         ("os_flavor", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deprecated in
         ("deprecated", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_architecture in
         ("architecture", arg) :: bnds
       in
       `Assoc bnds
    : images -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_images

[@@@deriving.end]

type hcloud_images = {
  id : string prop option; [@option]
  include_deprecated : bool prop option; [@option]
  most_recent : bool prop option; [@option]
  with_architecture : string prop list option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_images) -> ()

let yojson_of_hcloud_images =
  (function
   | {
       id = v_id;
       include_deprecated = v_include_deprecated;
       most_recent = v_most_recent;
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
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "with_architecture", arg in
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_images -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_images

[@@@deriving.end]

let hcloud_images ?id ?include_deprecated ?most_recent
    ?with_architecture ?with_selector ?with_status () : hcloud_images
    =
  {
    id;
    include_deprecated;
    most_recent;
    with_architecture;
    with_selector;
    with_status;
  }

type t = {
  tf_name : string;
  id : string prop;
  images : images list prop;
  include_deprecated : bool prop;
  most_recent : bool prop;
  with_architecture : string list prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?include_deprecated ?most_recent ?with_architecture
    ?with_selector ?with_status __id =
  let __type = "hcloud_images" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       images = Prop.computed __type __id "images";
       include_deprecated =
         Prop.computed __type __id "include_deprecated";
       most_recent = Prop.computed __type __id "most_recent";
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
      yojson_of_hcloud_images
        (hcloud_images ?id ?include_deprecated ?most_recent
           ?with_architecture ?with_selector ?with_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_deprecated ?most_recent
    ?with_architecture ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_deprecated ?most_recent ?with_architecture
      ?with_selector ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
