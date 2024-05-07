(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_opensearch_package_association = {
  domain_name : string prop;
  id : string prop option; [@option]
  package_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_package_association) -> ()

let yojson_of_aws_opensearch_package_association =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       package_id = v_package_id;
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
         let arg = yojson_of_prop yojson_of_string v_package_id in
         ("package_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearch_package_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_package_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearch_package_association ?id ?timeouts ~domain_name
    ~package_id () : aws_opensearch_package_association =
  { domain_name; id; package_id; timeouts }

type t = {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  package_id : string prop;
  reference_path : string prop;
}

let make ?id ?timeouts ~domain_name ~package_id __id =
  let __type = "aws_opensearch_package_association" in
  let __attrs =
    ({
       tf_name = __id;
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       package_id = Prop.computed __type __id "package_id";
       reference_path = Prop.computed __type __id "reference_path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_package_association
        (aws_opensearch_package_association ?id ?timeouts
           ~domain_name ~package_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name ~package_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~package_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
