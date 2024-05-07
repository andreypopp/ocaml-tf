(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type google_healthcare_consent_store = {
  dataset : string prop;
  default_consent_ttl : string prop option; [@option]
  enable_consent_create_on_update : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_consent_store) -> ()

let yojson_of_google_healthcare_consent_store =
  (function
   | {
       dataset = v_dataset;
       default_consent_ttl = v_default_consent_ttl;
       enable_consent_create_on_update =
         v_enable_consent_create_on_update;
       id = v_id;
       labels = v_labels;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
       let bnds =
         match v_enable_consent_create_on_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_consent_create_on_update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_consent_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_consent_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : google_healthcare_consent_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_consent_store

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_consent_store ?default_consent_ttl
    ?enable_consent_create_on_update ?id ?labels ?timeouts ~dataset
    ~name () : google_healthcare_consent_store =
  {
    dataset;
    default_consent_ttl;
    enable_consent_create_on_update;
    id;
    labels;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  dataset : string prop;
  default_consent_ttl : string prop;
  effective_labels : (string * string) list prop;
  enable_consent_create_on_update : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?default_consent_ttl ?enable_consent_create_on_update ?id
    ?labels ?timeouts ~dataset ~name __id =
  let __type = "google_healthcare_consent_store" in
  let __attrs =
    ({
       tf_name = __id;
       dataset = Prop.computed __type __id "dataset";
       default_consent_ttl =
         Prop.computed __type __id "default_consent_ttl";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_consent_create_on_update =
         Prop.computed __type __id "enable_consent_create_on_update";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_consent_store
        (google_healthcare_consent_store ?default_consent_ttl
           ?enable_consent_create_on_update ?id ?labels ?timeouts
           ~dataset ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_consent_ttl
    ?enable_consent_create_on_update ?id ?labels ?timeouts ~dataset
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_consent_ttl ?enable_consent_create_on_update ?id
      ?labels ?timeouts ~dataset ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
