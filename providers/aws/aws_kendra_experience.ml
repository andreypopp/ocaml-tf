(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__content_source_configuration = {
  data_source_ids : string prop list option; [@option]
  direct_put_content : bool prop option; [@option]
  faq_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__content_source_configuration) -> ()

let yojson_of_configuration__content_source_configuration =
  (function
   | {
       data_source_ids = v_data_source_ids;
       direct_put_content = v_direct_put_content;
       faq_ids = v_faq_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_faq_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "faq_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_direct_put_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "direct_put_content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_source_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "data_source_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__content_source_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__content_source_configuration

[@@@deriving.end]

type configuration__user_identity_configuration = {
  identity_attribute_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__user_identity_configuration) -> ()

let yojson_of_configuration__user_identity_configuration =
  (function
   | { identity_attribute_name = v_identity_attribute_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_attribute_name
         in
         ("identity_attribute_name", arg) :: bnds
       in
       `Assoc bnds
    : configuration__user_identity_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__user_identity_configuration

[@@@deriving.end]

type configuration = {
  content_source_configuration :
    configuration__content_source_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_identity_configuration :
    configuration__user_identity_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       content_source_configuration = v_content_source_configuration;
       user_identity_configuration = v_user_identity_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_identity_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__user_identity_configuration)
               v_user_identity_configuration
           in
           let bnd = "user_identity_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_content_source_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__content_source_configuration)
               v_content_source_configuration
           in
           let bnd = "content_source_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

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

type endpoints = {
  endpoint : string prop;
  endpoint_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { endpoint = v_endpoint; endpoint_type = v_endpoint_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type aws_kendra_experience = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_experience) -> ()

let yojson_of_aws_kendra_experience =
  (function
   | {
       description = v_description;
       id = v_id;
       index_id = v_index_id;
       name = v_name;
       role_arn = v_role_arn;
       configuration = v_configuration;
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
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_id in
         ("index_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kendra_experience -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_experience

[@@@deriving.end]

let configuration__content_source_configuration ?data_source_ids
    ?direct_put_content ?faq_ids () :
    configuration__content_source_configuration =
  { data_source_ids; direct_put_content; faq_ids }

let configuration__user_identity_configuration
    ~identity_attribute_name () :
    configuration__user_identity_configuration =
  { identity_attribute_name }

let configuration ?(content_source_configuration = [])
    ?(user_identity_configuration = []) () : configuration =
  { content_source_configuration; user_identity_configuration }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_experience ?description ?id ?(configuration = [])
    ?timeouts ~index_id ~name ~role_arn () : aws_kendra_experience =
  {
    description;
    id;
    index_id;
    name;
    role_arn;
    configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  endpoints : endpoints list prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
}

let make ?description ?id ?(configuration = []) ?timeouts ~index_id
    ~name ~role_arn __id =
  let __type = "aws_kendra_experience" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       endpoints = Prop.computed __type __id "endpoints";
       experience_id = Prop.computed __type __id "experience_id";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_experience
        (aws_kendra_experience ?description ?id ~configuration
           ?timeouts ~index_id ~name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(configuration = [])
    ?timeouts ~index_id ~name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~configuration ?timeouts ~index_id ~name
      ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
