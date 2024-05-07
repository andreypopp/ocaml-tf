(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kubernetes_resources = {
  api_version : string prop;
  field_selector : string prop option; [@option]
  kind : string prop;
  label_selector : string prop option; [@option]
  limit : float prop option; [@option]
  namespace : string prop option; [@option]
  objects : json prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_resources) -> ()

let yojson_of_kubernetes_resources =
  (function
   | {
       api_version = v_api_version;
       field_selector = v_field_selector;
       kind = v_kind;
       label_selector = v_label_selector;
       limit = v_limit;
       namespace = v_namespace;
       objects = v_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_objects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_json v in
             let bnd = "objects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_selector", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_field_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_selector", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_resources

[@@@deriving.end]

let kubernetes_resources ?field_selector ?label_selector ?limit
    ?namespace ?objects ~api_version ~kind () : kubernetes_resources
    =
  {
    api_version;
    field_selector;
    kind;
    label_selector;
    limit;
    namespace;
    objects;
  }

type t = {
  tf_name : string;
  api_version : string prop;
  field_selector : string prop;
  kind : string prop;
  label_selector : string prop;
  limit : float prop;
  namespace : string prop;
  objects : json prop;
}

let make ?field_selector ?label_selector ?limit ?namespace ?objects
    ~api_version ~kind __id =
  let __type = "kubernetes_resources" in
  let __attrs =
    ({
       tf_name = __id;
       api_version = Prop.computed __type __id "api_version";
       field_selector = Prop.computed __type __id "field_selector";
       kind = Prop.computed __type __id "kind";
       label_selector = Prop.computed __type __id "label_selector";
       limit = Prop.computed __type __id "limit";
       namespace = Prop.computed __type __id "namespace";
       objects = Prop.computed __type __id "objects";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_resources
        (kubernetes_resources ?field_selector ?label_selector ?limit
           ?namespace ?objects ~api_version ~kind ());
    attrs = __attrs;
  }

let register ?tf_module ?field_selector ?label_selector ?limit
    ?namespace ?objects ~api_version ~kind __id =
  let (r : _ Tf_core.resource) =
    make ?field_selector ?label_selector ?limit ?namespace ?objects
      ~api_version ~kind __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
