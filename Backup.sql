# MariaDB [s23575]> SHOW GLOBAL VARIABLES LIKE '%log%';
# +-------------------------------------------+--------------------------------------------------------------------------------------------------------------+
# | Variable_name                             | Value                                                                                                        |
# +-------------------------------------------+--------------------------------------------------------------------------------------------------------------+
# | aria_checkpoint_log_activity              | 1048576                                                                                                      |
# | aria_log_file_size                        | 1073741824                                                                                                   |
# | aria_log_purge_type                       | immediate                                                                                                    |
# | aria_sync_log_dir                         | NEWFILE                                                                                                      |
# | back_log                                  | 80                                                                                                           |
# | binlog_annotate_row_events                | OFF                                                                                                          |
# | binlog_cache_size                         | 32768                                                                                                        |
# | binlog_checksum                           | NONE                                                                                                         |
# | binlog_commit_wait_count                  | 0                                                                                                            |
# | binlog_commit_wait_usec                   | 100000                                                                                                       |
# | binlog_direct_non_transactional_updates   | OFF                                                                                                          |
# | binlog_format                             | STATEMENT                                                                                                    |
# | binlog_optimize_thread_scheduling         | ON                                                                                                           |
# | binlog_row_image                          | FULL                                                                                                         |
# | binlog_stmt_cache_size                    | 32768                                                                                                        |
# | encrypt_binlog                            | OFF                                                                                                          |
# | expire_logs_days                          | 10                                                                                                           |
# | general_log                               | OFF                                                                                                          |
# | general_log_file                          | szuflandia.log                                                                                               |
# | gtid_binlog_pos                           |                                                                                                              |
# | gtid_binlog_state                         |                                                                                                              |
# | innodb_api_enable_binlog                  | OFF                                                                                                          |
# | innodb_encrypt_log                        | OFF                                                                                                          |
# | innodb_flush_log_at_timeout               | 1                                                                                                            |
# | innodb_flush_log_at_trx_commit            | 1                                                                                                            |
# | innodb_locks_unsafe_for_binlog            | OFF                                                                                                          |
# | innodb_log_arch_dir                       | ./                                                                                                           |
# | innodb_log_arch_expire_sec                | 0                                                                                                            |
# | innodb_log_archive                        | OFF                                                                                                          |
# | innodb_log_block_size                     | 512                                                                                                          |
# | innodb_log_buffer_size                    | 16777216                                                                                                     |
# | innodb_log_checksum_algorithm             | INNODB                                                                                                       |
# | innodb_log_compressed_pages               | ON                                                                                                           |
# | innodb_log_file_size                      | 50331648                                                                                                     |
# | innodb_log_files_in_group                 | 2                                                                                                            |
# | innodb_log_group_home_dir                 | ./                                                                                                           |
# | innodb_mirrored_log_groups                | 1                                                                                                            |
# | innodb_online_alter_log_max_size          | 134217728                                                                                                    |
# | innodb_scrub_log                          | OFF                                                                                                          |
# | innodb_scrub_log_speed                    | 256                                                                                                          |
# | innodb_undo_logs                          | 128                                                                                                          |
# | innodb_use_global_flush_log_at_trx_commit | ON                                                                                                           |
# | log_bin                                   | OFF                                                                                                          |
# | log_bin_basename                          |                                                                                                              |
# | log_bin_index                             |                                                                                                              |
# | log_bin_trust_function_creators           | OFF                                                                                                          |
# | log_error                                 | /var/log/mysql/error.log                                                                                     |
# | log_output                                | FILE                                                                                                         |
# | log_queries_not_using_indexes             | OFF                                                                                                          |
# | log_slave_updates                         | OFF                                                                                                          |
# | log_slow_admin_statements                 | OFF                                                                                                          |
# | log_slow_filter                           | admin,filesort,filesort_on_disk,full_join,full_scan,query_cache,query_cache_miss,tmp_table,tmp_table_on_disk |
# | log_slow_rate_limit                       | 1                                                                                                            |
# | log_slow_slave_statements                 | OFF                                                                                                          |
# | log_slow_verbosity                        |                                                                                                              |
# | log_tc_size                               | 24576                                                                                                        |
# | log_warnings                              | 1                                                                                                            |
# | max_binlog_cache_size                     | 18446744073709547520                                                                                         |
# | max_binlog_size                           | 104857600                                                                                                    |
# | max_binlog_stmt_cache_size                | 18446744073709547520                                                                                         |
# | max_relay_log_size                        | 104857600                                                                                                    |
# | relay_log                                 |                                                                                                              |
# | relay_log_basename                        |                                                                                                              |
# | relay_log_index                           |                                                                                                              |
# | relay_log_info_file                       | relay-log.info                                                                                               |
# | relay_log_purge                           | ON                                                                                                           |
# | relay_log_recovery                        | OFF                                                                                                          |
# | relay_log_space_limit                     | 0                                                                                                            |
# | slow_query_log                            | OFF                                                                                                          |
# | slow_query_log_file                       | szuflandia-slow.log                                                                                          |
# | sql_log_bin                               | ON                                                                                                           |
# | sql_log_off                               | OFF                                                                                                          |
# | sync_binlog                               | 0                                                                                                            |
# | sync_relay_log                            | 10000                                                                                                        |
# | sync_relay_log_info                       | 10000                                                                                                        |
# | wsrep_forced_binlog_format                | NONE                                                                                                         |
# | wsrep_log_conflicts                       | OFF                                                                                                          |
# +-------------------------------------------+--------------------------------------------------------------------------------------------------------------+
