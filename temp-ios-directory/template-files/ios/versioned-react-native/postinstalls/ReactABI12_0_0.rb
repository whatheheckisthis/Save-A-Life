    # Generated postinstall: ReactABI12_0_0
    if target.pod_name == 'ReactABI12_0_0'
      target.native_target.build_configurations.each do |config|
        config.build_settings['OTHER_CFLAGS'] = ['-DkNeverRequested=ReactABI12_0_0kNeverRequested','-DkNeverProgressed=ReactABI12_0_0kNeverProgressed','-DZINDEX_DEFAULT=ReactABI12_0_0ZINDEX_DEFAULT','-DZINDEX_STICKY_HEADER=ReactABI12_0_0ZINDEX_STICKY_HEADER','-DgCurrentGenerationCount=ReactABI12_0_0gCurrentGenerationCount','-DgPrintSkips=ReactABI12_0_0gPrintSkips','-DgPrintChanges=ReactABI12_0_0gPrintChanges','-DlayoutNodeInternal=ReactABI12_0_0layoutNodeInternal','-DgDepth=ReactABI12_0_0gDepth','-DgPrintTree=ReactABI12_0_0gPrintTree','-DisUndefined=ReactABI12_0_0isUndefined','-DSINGLE_FRAME_INTERVAL=ReactABI12_0_0SINGLE_FRAME_INTERVAL','-DkSMCalloutViewRepositionDelayForUIScrollView=ReactABI12_0_0kSMCalloutViewRepositionDelayForUIScrollView']
        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)']
        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] << 'ABI12_0_0RCT_DEV=1'
        config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = false
      end
    end
    # End generated postinstall
