(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dictionary__cloud_storage_path = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dictionary__cloud_storage_path) -> ()

let yojson_of_dictionary__cloud_storage_path =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : dictionary__cloud_storage_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dictionary__cloud_storage_path

[@@@deriving.end]

type dictionary__word_list = {
  words : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dictionary__word_list) -> ()

let yojson_of_dictionary__word_list =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : dictionary__word_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dictionary__word_list

[@@@deriving.end]

type dictionary = {
  cloud_storage_path : dictionary__cloud_storage_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  word_list : dictionary__word_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dictionary) -> ()

let yojson_of_dictionary =
  (function
   | {
       cloud_storage_path = v_cloud_storage_path;
       word_list = v_word_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_word_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dictionary__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_storage_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dictionary__cloud_storage_path)
               v_cloud_storage_path
           in
           let bnd = "cloud_storage_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : dictionary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dictionary

[@@@deriving.end]

type large_custom_dictionary__big_query_field__field = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : large_custom_dictionary__big_query_field__field) -> ()

let yojson_of_large_custom_dictionary__big_query_field__field =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary__big_query_field__field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary__big_query_field__field

[@@@deriving.end]

type large_custom_dictionary__big_query_field__table = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : large_custom_dictionary__big_query_field__table) -> ()

let yojson_of_large_custom_dictionary__big_query_field__table =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       table_id = v_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary__big_query_field__table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary__big_query_field__table

[@@@deriving.end]

type large_custom_dictionary__big_query_field = {
  field : large_custom_dictionary__big_query_field__field list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table : large_custom_dictionary__big_query_field__table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : large_custom_dictionary__big_query_field) -> ()

let yojson_of_large_custom_dictionary__big_query_field =
  (function
   | { field = v_field; table = v_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_large_custom_dictionary__big_query_field__table)
               v_table
           in
           let bnd = "table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_field then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_large_custom_dictionary__big_query_field__field)
               v_field
           in
           let bnd = "field", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary__big_query_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary__big_query_field

[@@@deriving.end]

type large_custom_dictionary__cloud_storage_file_set = {
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : large_custom_dictionary__cloud_storage_file_set) -> ()

let yojson_of_large_custom_dictionary__cloud_storage_file_set =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary__cloud_storage_file_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary__cloud_storage_file_set

[@@@deriving.end]

type large_custom_dictionary__output_path = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : large_custom_dictionary__output_path) -> ()

let yojson_of_large_custom_dictionary__output_path =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary__output_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary__output_path

[@@@deriving.end]

type large_custom_dictionary = {
  big_query_field : large_custom_dictionary__big_query_field list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_storage_file_set :
    large_custom_dictionary__cloud_storage_file_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output_path : large_custom_dictionary__output_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : large_custom_dictionary) -> ()

let yojson_of_large_custom_dictionary =
  (function
   | {
       big_query_field = v_big_query_field;
       cloud_storage_file_set = v_cloud_storage_file_set;
       output_path = v_output_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_output_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_large_custom_dictionary__output_path)
               v_output_path
           in
           let bnd = "output_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_storage_file_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_large_custom_dictionary__cloud_storage_file_set)
               v_cloud_storage_file_set
           in
           let bnd = "cloud_storage_file_set", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_big_query_field then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_large_custom_dictionary__big_query_field)
               v_big_query_field
           in
           let bnd = "big_query_field", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : large_custom_dictionary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_large_custom_dictionary

[@@@deriving.end]

type regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regex) -> ()

let yojson_of_regex =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : regex -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regex

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

type google_data_loss_prevention_stored_info_type = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  stored_info_type_id : string prop option; [@option]
  dictionary : dictionary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  large_custom_dictionary : large_custom_dictionary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  regex : regex list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_loss_prevention_stored_info_type) -> ()

let yojson_of_google_data_loss_prevention_stored_info_type =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
       stored_info_type_id = v_stored_info_type_id;
       dictionary = v_dictionary;
       large_custom_dictionary = v_large_custom_dictionary;
       regex = v_regex;
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
         if Stdlib.( = ) [] v_regex then bnds
         else
           let arg = (yojson_of_list yojson_of_regex) v_regex in
           let bnd = "regex", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_large_custom_dictionary then bnds
         else
           let arg =
             (yojson_of_list yojson_of_large_custom_dictionary)
               v_large_custom_dictionary
           in
           let bnd = "large_custom_dictionary", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dictionary then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dictionary) v_dictionary
           in
           let bnd = "dictionary", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stored_info_type_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stored_info_type_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_data_loss_prevention_stored_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_loss_prevention_stored_info_type

[@@@deriving.end]

let dictionary__cloud_storage_path ~path () :
    dictionary__cloud_storage_path =
  { path }

let dictionary__word_list ~words () : dictionary__word_list =
  { words }

let dictionary ?(cloud_storage_path = []) ?(word_list = []) () :
    dictionary =
  { cloud_storage_path; word_list }

let large_custom_dictionary__big_query_field__field ~name () :
    large_custom_dictionary__big_query_field__field =
  { name }

let large_custom_dictionary__big_query_field__table ~dataset_id
    ~project_id ~table_id () :
    large_custom_dictionary__big_query_field__table =
  { dataset_id; project_id; table_id }

let large_custom_dictionary__big_query_field ~field ~table () :
    large_custom_dictionary__big_query_field =
  { field; table }

let large_custom_dictionary__cloud_storage_file_set ~url () :
    large_custom_dictionary__cloud_storage_file_set =
  { url }

let large_custom_dictionary__output_path ~path () :
    large_custom_dictionary__output_path =
  { path }

let large_custom_dictionary ?(big_query_field = [])
    ?(cloud_storage_file_set = []) ~output_path () :
    large_custom_dictionary =
  { big_query_field; cloud_storage_file_set; output_path }

let regex ?group_indexes ~pattern () : regex =
  { group_indexes; pattern }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_loss_prevention_stored_info_type ?description
    ?display_name ?id ?stored_info_type_id ?(dictionary = [])
    ?(large_custom_dictionary = []) ?(regex = []) ?timeouts ~parent
    () : google_data_loss_prevention_stored_info_type =
  {
    description;
    display_name;
    id;
    parent;
    stored_info_type_id;
    dictionary;
    large_custom_dictionary;
    regex;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  stored_info_type_id : string prop;
}

let make ?description ?display_name ?id ?stored_info_type_id
    ?(dictionary = []) ?(large_custom_dictionary = []) ?(regex = [])
    ?timeouts ~parent __id =
  let __type = "google_data_loss_prevention_stored_info_type" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       stored_info_type_id =
         Prop.computed __type __id "stored_info_type_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_loss_prevention_stored_info_type
        (google_data_loss_prevention_stored_info_type ?description
           ?display_name ?id ?stored_info_type_id ~dictionary
           ~large_custom_dictionary ~regex ?timeouts ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?stored_info_type_id ?(dictionary = [])
    ?(large_custom_dictionary = []) ?(regex = []) ?timeouts ~parent
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?stored_info_type_id
      ~dictionary ~large_custom_dictionary ~regex ?timeouts ~parent
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
