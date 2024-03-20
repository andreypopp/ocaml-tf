(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete; update = v_update } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_elasticsearch_domain_policy = {
  access_policies : string prop;
  domain_name : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticsearch_domain_policy) -> ()

let yojson_of_aws_elasticsearch_domain_policy =
  (function
   | {
       access_policies = v_access_policies;
       domain_name = v_domain_name;
       id = v_id;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_access_policies
         in
         ("access_policies", arg) :: bnds
       in
       `Assoc bnds
    : aws_elasticsearch_domain_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticsearch_domain_policy

[@@@deriving.end]

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_elasticsearch_domain_policy ?id ?timeouts ~access_policies
    ~domain_name () : aws_elasticsearch_domain_policy =
  { access_policies; domain_name; id; timeouts }

type t = {
  access_policies : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ?timeouts ~access_policies ~domain_name __id =
  let __type = "aws_elasticsearch_domain_policy" in
  let __attrs =
    ({
       access_policies = Prop.computed __type __id "access_policies";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticsearch_domain_policy
        (aws_elasticsearch_domain_policy ?id ?timeouts
           ~access_policies ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_policies ~domain_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_policies ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
